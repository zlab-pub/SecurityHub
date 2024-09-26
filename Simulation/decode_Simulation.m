clear
clc
format long


fd = fopen('phase.txt', 'r');
i = 1;
while ~feof(fd)
    str = fgetl(fd);
    phase(i) = readPhase(str);
    i = i + 1;
end

phase = phase(980:end);
virData = exp(1j*phase);

figure;
pspectrum(virData,100e6,'spectrogram', ...
    'TimeResolution',0.00001)


%%
function value = readPhase(data)
    len = length(data);
    if(data(1) == '0')
        sign = 1;
        int_num = bin2dec(data(2:3));
    else
        sign = -1;
        int_num = 3-bin2dec(data(2:3));
    end
    fraction = data(4:len);
    if(sign == -1)
        temp = 0;
        for j=len-4:-1:1
            if(fraction(j) == '1')
                temp = j;
                break;
            end
        end
        for k = 1:temp-1
            if(fraction(k) == '0')
                fraction(k) = '1';
            else
                fraction(k) = '0';
            end
        end
    end
    H = 0;
    for i=1:len-4
        E=bin2dec(fraction(i));
        H=H+E*(2^-i);
    end
    value = sign*(int_num+H);
end