-- Revert: schemas/agent_db_users_public/tables/role_types/columns/name/alterations/alt0000001712


ALTER TABLE "agent_db_users_public".role_types 
  ALTER COLUMN name DROP NOT NULL;


