-- Revert: schemas/agent_db_app_public/tables/deal_notes/columns/id/alterations/alt0000002425


ALTER TABLE "agent_db_app_public".deal_notes 
  ALTER COLUMN id DROP NOT NULL;


