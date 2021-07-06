df =  read.csv("C:\\Users\\shado_000\\datamining\\data-mining-data\\5402_dataset.csv")


for (i in 1:dim(df)[1]) {
	if( is.na(df$LIT101[i]) )
	{
		u = i+1
		while(is.na(df$LIT101[u]))
		{
			u = u +1
		}	

		df$LIT101[i] <- (df$LIT101[i-1] +df$LIT101[u]) /2
	}

}

for (i in 1:dim(df)[1]) {
	if( is.na(df$LIT301[i]))
	{
		u = i+1
		while(is.na(df$LIT301[u]))
		{
			u = u +1
		}	

		df$LIT301[i] <- (df$LIT301[i-1] +df$LIT301[u]) /2
	}
	
}


for (i in 1:dim(df)[1]) {
	if(is.na(df$LIT401[i]))
	{
		u = i+1
		while(is.na(df$LIT401[u]))
		{
			u = u +1
		}	

		df$LIT401[i] <- (df$LIT401[i-1] +df$LIT401[u]) /2
		
		
	}
	
}

write.csv(df,"C:\\Users\\shado_000\\datamining\\data-mining-data\\5402_dataset2.csv", row.names = FALSE)