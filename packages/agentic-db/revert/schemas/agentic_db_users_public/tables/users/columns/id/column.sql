-- Revert: schemas/agentic_db_users_public/tables/users/columns/id/column


ALTER TABLE agentic_db_users_public.users 
  DROP COLUMN id RESTRICT;


