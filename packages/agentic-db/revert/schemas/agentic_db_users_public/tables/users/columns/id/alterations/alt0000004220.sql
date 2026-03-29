-- Revert: schemas/agentic_db_users_public/tables/users/columns/id/alterations/alt0000004220


ALTER TABLE agentic_db_users_public.users 
  ALTER COLUMN id DROP NOT NULL;


