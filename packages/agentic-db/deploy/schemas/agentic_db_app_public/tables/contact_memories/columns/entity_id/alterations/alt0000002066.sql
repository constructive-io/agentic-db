-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/columns/entity_id/alterations/alt0000002066
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/contact_memories/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/task_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".contact_memories 
  ALTER COLUMN entity_id SET NOT NULL;

