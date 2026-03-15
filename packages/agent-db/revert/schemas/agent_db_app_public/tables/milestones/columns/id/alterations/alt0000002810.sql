-- Revert: schemas/agent_db_app_public/tables/milestones/columns/id/alterations/alt0000002810


ALTER TABLE "agent_db_app_public".milestones 
  ALTER COLUMN id DROP NOT NULL;


