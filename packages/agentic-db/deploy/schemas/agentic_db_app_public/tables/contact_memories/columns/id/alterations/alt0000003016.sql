-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/columns/id/alterations/alt0000003016
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/contact_memories/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/event_notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.contact_memories 
  ALTER COLUMN id SET NOT NULL;

