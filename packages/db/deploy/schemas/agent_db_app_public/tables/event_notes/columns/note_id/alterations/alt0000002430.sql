-- Deploy: schemas/agent_db_app_public/tables/event_notes/columns/note_id/alterations/alt0000002430
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_notes/table
-- requires: schemas/agent_db_app_public/tables/event_notes/columns/note_id/column
-- requires: schemas/agent_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".event_notes 
  ALTER COLUMN note_id SET NOT NULL;

