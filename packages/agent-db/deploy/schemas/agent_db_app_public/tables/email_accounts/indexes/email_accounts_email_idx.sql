-- Deploy: schemas/agent_db_app_public/tables/email_accounts/indexes/email_accounts_email_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/email_accounts/table
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/email/column
-- requires: schemas/agent_db_app_public/tables/chunks/indexes/chunks_repository_id_idx


CREATE INDEX email_accounts_email_idx ON "agent_db_app_public".email_accounts USING BTREE ( email );

