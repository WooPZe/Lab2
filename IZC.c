#include <stdio.h>

int main(){
	int mas[10] = {1, -2, 3, -4, 5, -6, 7, -8, 9, -10};
	int sum = 0;
	int n;

	for (n = 0; n < 10; n++){
		if (mas[n] > 0){
			sum += mas[n];
		}
		else {
			mas[n] = mas[n] * (-1);
			sum += mas[n];
		}
	}
	printf ("Сумма элементов массива с учетом инвертации = %d \n", sum);
	return 0;
}
