-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/columns/note_id/alterations/alt0000003493
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table
-- requires: schemas/agentic_db_app_public/tables/deal_notes/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/company_notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.deal_notes 
  ALTER COLUMN note_id SET NOT NULL;

