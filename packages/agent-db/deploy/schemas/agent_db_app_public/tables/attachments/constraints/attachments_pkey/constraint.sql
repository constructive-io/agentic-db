-- Deploy: schemas/agent_db_app_public/tables/attachments/constraints/attachments_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/usage_count/alterations/alt0000004107


ALTER TABLE "agent_db_app_public".attachments 
  ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);

