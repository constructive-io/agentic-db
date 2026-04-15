-- Revert: schemas/agentic_db_users_public/tables/users/columns/updated_at/column


ALTER TABLE agentic_db_users_public.users 
  DROP COLUMN updated_at RESTRICT;


