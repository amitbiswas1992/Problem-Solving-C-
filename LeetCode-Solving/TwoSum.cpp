class Solution {
public:
    vector <int> twoSum (vector<int> &nums, int target) {

    vector <int> findAnswer;

        for(int i = 0; i < nums.size(); i++){
            for(int j = i + 1; j< nums.size();j++){

               if ( nums[i] + nums[j] == target ){
                   
                  findAnswer.push_back(i);
                  findAnswer.push_back(j);


               }

                // complexity O(n2)
            }


        }
         return findAnswer;
    }
};
