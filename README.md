Set up process
1. Create schema 'moviestracker'
2. Run mvn -Pdevelopment resources:resources liquibase:update -X
3. Add some data manually using initial-data.sql or via update.sql