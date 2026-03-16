-- Deploy: schemas/agent_db_app_public/tables/contact_notes/columns/id/alterations/alt0000002413
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_notes/table
-- requires: schemas/agent_db_app_public/tables/contact_notes/columns/id/column
-- requires: schemas/agent_db_app_public/tables/agent_prompts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".contact_notes 
  ALTER COLUMN id SET NOT NULL;

