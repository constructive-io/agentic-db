-- Revert: schemas/agentic_db_users_public/tables/users/columns/updated_at/alterations/alt0000001182


ALTER TABLE agentic_db_users_public.users 
  ALTER COLUMN updated_at DROP DEFAULT;


