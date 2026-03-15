-- Revert: schemas/agent_db_app_public/tables/images/columns/id/alterations/alt0000004020


ALTER TABLE "agent_db_app_public".images 
  ALTER COLUMN id DROP NOT NULL;


