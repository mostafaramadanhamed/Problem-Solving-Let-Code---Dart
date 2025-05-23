void main() {
  Solution solution = Solution();
  print(solution.romanToInt('III')); // Output: 3
  print(solution.romanToInt('IV')); // Output: 4
  print(solution.romanToInt('IX')); // Output: 9
  print(solution.romanToInt('LVIII')); // Output: 58
  print(solution.romanToInt('MCMXCIV')); // Output: 1994
}
// LeetCode Problem 13: Roman to Integer
// https://leetcode.com/problems/roman-to-integer/
// Given a roman numeral, convert it to an integer.

//my solution
class Solution {
  final Map<String, int> romanNums = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  int romanToInt(String s) {
    int sum = 0;
    int prevValue = 0;

    for (int i = s.length - 1; i >= 0; i--) {
      int value = romanNums[s[i]] ?? 0;

      if (value < prevValue) {
        sum -= value;
      } else {
        sum += value;
      }

      prevValue = value;
    }

    return sum;
  }
}

//@ Best Solution
//class Solution {
//   int romanToInt(String s) {
//     int ans = 0, num = 0;
//         for (int i = s.length-1; i >= 0; i--) {
//             switch(s[i]) {
//                 case 'I': num = 1; break;
//                 case 'V': num = 5; break;
//                 case 'X': num = 10; break;
//                 case 'L': num = 50; break;
//                 case 'C': num = 100; break;
//                 case 'D': num = 500; break;
//                 case 'M': num = 1000; break;
//             }
//             if (4*num < ans) ans-=num;
//             else ans+=num;
//         }
//         return ans;
//   }
// }
//