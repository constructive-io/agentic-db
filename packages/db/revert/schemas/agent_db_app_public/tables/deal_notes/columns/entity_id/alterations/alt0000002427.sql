-- Revert: schemas/agent_db_app_public/tables/deal_notes/columns/entity_id/alterations/alt0000002427


ALTER TABLE "agent_db_app_public".deal_notes 
  ALTER COLUMN entity_id DROP NOT NULL;


