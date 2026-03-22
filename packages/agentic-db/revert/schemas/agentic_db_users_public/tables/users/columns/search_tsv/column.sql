-- Revert: schemas/agentic_db_users_public/tables/users/columns/search_tsv/column


ALTER TABLE agentic_db_users_public.users 
  DROP COLUMN search_tsv RESTRICT;


