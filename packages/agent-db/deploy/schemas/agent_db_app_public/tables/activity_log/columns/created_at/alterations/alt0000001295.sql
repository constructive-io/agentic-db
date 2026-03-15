-- Deploy: schemas/agent_db_app_public/tables/activity_log/columns/created_at/alterations/alt0000001295
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/activity_log/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.activity_log 
    ALTER COLUMN created_at SET DEFAULT now();

