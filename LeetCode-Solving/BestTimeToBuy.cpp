class Solution {
public:
    int maxProfit(vector<int>& prices) {

        // cumalative Array | cumalative Sum concept
        if (prices.size() == 0) return 0;
        int minimum = prices[0];
        int ans = 0;
        for (int i = 1; i < prices.size(); i++){
            int sell = prices[i];
            int buy = minimum;
            ans = max (ans, sell - buy);
            minimum = min (minimum, prices[i]);
        }

        return ans;
    }
};
