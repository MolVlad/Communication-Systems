% Генератор м-последовательности
%> @file Mseq.m
% =========================================================================
%> @brief Генератор м-последовательности
%> @return seq м-последовательность (биты)
% =========================================================================
function [seq] = Mseq()
    buf = [1 0 0 0 0 0];
    seq(1,63) = 0;
    
    for i=1:63
        x = mod(buf(6) + buf(5),2);
        seq(i)=x;
        buf = [x buf(1:end-1)];
    end
end
