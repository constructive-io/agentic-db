-- Deploy: schemas/agent_db_app_public/tables/attachments/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/usage_count/alterations/alt0000004155


GRANT UPDATE ON "agent_db_app_public".attachments TO authenticated;

