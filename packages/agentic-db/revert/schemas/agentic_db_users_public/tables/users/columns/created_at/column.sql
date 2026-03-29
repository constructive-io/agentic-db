-- Revert: schemas/agentic_db_users_public/tables/users/columns/created_at/column


ALTER TABLE agentic_db_users_public.users 
  DROP COLUMN created_at RESTRICT;


