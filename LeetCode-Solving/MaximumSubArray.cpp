class Solution {
public:
    //kadane algorithm
    //max 1-D range sum
    int maxSubArray(vector<int>& nums) {
        int n = nums.size();
        long long sum = 0;
        long long ans = -999999999999999999;

        for (int i = 0; i< n; i++){

            sum += nums[i];
            ans = max(sum, ans);

            if (sum < 0) {
                sum = 0;
            }

        }
        return ans;

    }

};
