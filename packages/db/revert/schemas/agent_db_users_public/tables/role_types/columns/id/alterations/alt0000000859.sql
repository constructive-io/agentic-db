-- Revert: schemas/agent_db_users_public/tables/role_types/columns/id/alterations/alt0000000859


ALTER TABLE "agent_db_users_public".role_types 
  ALTER COLUMN id DROP NOT NULL;


