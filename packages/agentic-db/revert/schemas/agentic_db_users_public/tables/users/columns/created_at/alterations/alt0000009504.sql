-- Revert: schemas/agentic_db_users_public/tables/users/columns/created_at/alterations/alt0000009504


ALTER TABLE agentic_db_users_public.users 
  ALTER COLUMN created_at DROP DEFAULT;


