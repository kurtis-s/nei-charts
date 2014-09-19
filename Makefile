datadir=data

$(datadir)/summarySCC_PM25.rds $(datadir)/Source_Classification_Code.rds: $(datadir)/exdata_data_NEI_data.zip
	unzip -o $< -d $(datadir)

clean:
	rm -f $(datadir)/summarySCC_PM25.rds
	rm -f $(datadir)/Source_Classification_Code.rds
