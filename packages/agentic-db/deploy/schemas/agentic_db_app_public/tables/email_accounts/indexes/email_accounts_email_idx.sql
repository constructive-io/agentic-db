-- Deploy: schemas/agentic_db_app_public/tables/email_accounts/indexes/email_accounts_email_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_name_gin_idx
-- requires: schemas/agentic_db_app_public/tables/email_accounts/columns/email/column


CREATE INDEX email_accounts_email_idx ON "agentic_db_app_public".email_accounts USING BTREE ( email );

