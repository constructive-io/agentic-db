-- Revert: schemas/agent_db_app_public/tables/companies/columns/description/column


ALTER TABLE "agent_db_app_public".companies 
  DROP COLUMN description RESTRICT;


