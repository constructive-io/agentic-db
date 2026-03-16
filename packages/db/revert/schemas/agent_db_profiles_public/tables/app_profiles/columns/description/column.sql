-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/description/column


ALTER TABLE "agent_db_profiles_public".app_profiles 
  DROP COLUMN description RESTRICT;


