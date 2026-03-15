-- Deploy: schemas/agent_db_app_public/tables/feedback/columns/updated_at/alterations/alt0000001124
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/feedback/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.feedback 
  ALTER COLUMN updated_at SET NOT NULL;

