symbols = 1:1:8;
p = [0.2 0.05 0.03 0.1 0.3 0.02 0.22 0.08];
dict = huffmandict(symbols, p);
sig = randsrc(200, 1, [symbols; p]);
comp = huffmanenco(sig, dict);

for i = 1:1:8
    symbol = i;
    prob = p(i);
    codeword = dict(symbol, 2);
    fprintf('x%d probability: %.2f   codeword: --->\n\t %d %d\n', i, prob, codeword{1, 1});
end

H = myentropy(p);
fprintf('Source Entropy: %.2f\n', H);
avgLenDict = mean(comp);
fprintf('Average Codeword Length: %.2f\n', avgLenDict);
performance = H / avgLenDict;
fprintf('Source Efficiency: %.2f\n', performance);
redundancy = 1 - performance;
fprintf('Source Redundancy: %.2f\n', redundancy);
