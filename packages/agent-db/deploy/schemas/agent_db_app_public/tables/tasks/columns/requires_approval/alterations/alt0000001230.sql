-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/requires_approval/alterations/alt0000001230
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/requires_approval/column
-- requires: schemas/agent_db_app_public/tables/deal_documents/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.tasks 
    ALTER COLUMN requires_approval SET DEFAULT false;

