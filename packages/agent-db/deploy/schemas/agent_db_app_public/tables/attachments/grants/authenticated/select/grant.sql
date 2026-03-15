-- Deploy: schemas/agent_db_app_public/tables/attachments/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/usage_count/alterations/alt0000000937


GRANT SELECT ON agent_db_app_public.attachments TO authenticated;

