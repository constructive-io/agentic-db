-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/updated_at/alterations/alt0000003998
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/goals/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.goals 
  ALTER COLUMN updated_at SET NOT NULL;

