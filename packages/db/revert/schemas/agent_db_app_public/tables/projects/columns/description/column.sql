-- Revert: schemas/agent_db_app_public/tables/projects/columns/description/column


ALTER TABLE "agent_db_app_public".projects 
  DROP COLUMN description RESTRICT;


