-- Revert: schemas/agent_db_users_public/tables/users/columns/updated_at/alterations/alt0000001717


ALTER TABLE "agent_db_users_public".users 
  ALTER COLUMN updated_at DROP DEFAULT;


