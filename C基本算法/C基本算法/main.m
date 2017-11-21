//
//  main.m
//  C基本算法
//
//  Created by cf on 2017/11/21.
//  Copyright © 2017年 chenfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

void digui(int a)
{
    if (a > 0) {
        digui(a - 1);
        printf("a = %d\n",a);
        
    }

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       
        //冒泡法排序
        {
            int q[10] = {0};
            for (int i = 0; i < 10; i++)
            {
                q[i] = arc4random()%101;
                printf("%d\n",q[i]);
            }
            for (int j = 0; j < 9; j++) {
                for (int k = 0; k < 9 - j; k++) {
                    //如果前值大于后值，交换顺序
                    if (q[k] > q[k+1]) {
                        int temp = q[k];
                        q[k] = q[k+1];
                        q[k+1] = temp;
                        
                    }
                }
            }
            for (int s = 0; s < 10; s++) {
                printf(" %d\n ",q[s]);
            }
        }
        
        //迭代（是一种不断用变量的旧值递推新值的过程）
        /*
           问题： 一个饲养场引进一只刚出生的新品种兔子，这种兔子从出生的下一个月开始，每月新生一只兔子，新生的兔子也如此繁殖。如果所有的兔子都不死去，问到第 12 个月时，该饲养场共有兔子多少只
         */
        {
            //推导关系式为：第一个月总数1只，第二个月总数=第一个月总数*2，第三个月总数=第二个月总数*2，以此类推，第十二个月总数=第十一个月总数*2。确定迭代次数为11次。
            
            int x = 1;
            int y = 0;
            for (int i = 2; i<= 12; i++) {
                y=x*2;
                x=y;
                
            }
            printf(" y = %d\n ",y);
        
        //递归（自己调用自己，设置停止的条件）
        {
            digui(5);
        }
            
        }
        
    }
    return 0;
}
