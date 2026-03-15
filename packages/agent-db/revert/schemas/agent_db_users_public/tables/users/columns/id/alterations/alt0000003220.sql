-- Revert: schemas/agent_db_users_public/tables/users/columns/id/alterations/alt0000003220


ALTER TABLE "agent_db_users_public".users 
  ALTER COLUMN id DROP NOT NULL;


