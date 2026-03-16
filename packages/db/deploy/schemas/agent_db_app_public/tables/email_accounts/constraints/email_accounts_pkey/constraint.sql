-- Deploy: schemas/agent_db_app_public/tables/email_accounts/constraints/email_accounts_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/email_accounts/table
-- requires: schemas/agent_db_app_public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


ALTER TABLE "agent_db_app_public".email_accounts 
  ADD CONSTRAINT email_accounts_pkey PRIMARY KEY (id);

