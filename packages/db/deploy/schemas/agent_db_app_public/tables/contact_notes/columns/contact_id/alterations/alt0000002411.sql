-- Deploy: schemas/agent_db_app_public/tables/contact_notes/columns/contact_id/alterations/alt0000002411
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_notes/table
-- requires: schemas/agent_db_app_public/tables/contact_notes/columns/contact_id/column
-- requires: schemas/agent_db_app_public/tables/agent_prompts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".contact_notes 
  ALTER COLUMN contact_id SET NOT NULL;

