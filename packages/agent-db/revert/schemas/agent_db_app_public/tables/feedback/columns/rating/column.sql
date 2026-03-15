-- Revert: schemas/agent_db_app_public/tables/feedback/columns/rating/column


ALTER TABLE "agent_db_app_public".feedback 
  DROP COLUMN rating RESTRICT;


