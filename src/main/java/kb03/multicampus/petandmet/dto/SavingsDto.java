package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SavingsDto {
	private String name, bank;
	private double interest_rate,prime_rate;
	private int period, min_saving_amount, max_saving_amount;
	
	
}