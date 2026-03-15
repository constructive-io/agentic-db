-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/created_at/alterations/alt0000004361
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/sessions/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".sessions 
    ALTER COLUMN created_at SET DEFAULT now();

