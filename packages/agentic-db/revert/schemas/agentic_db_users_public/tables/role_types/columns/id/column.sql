-- Revert: schemas/agentic_db_users_public/tables/role_types/columns/id/column


ALTER TABLE "agentic_db_users_public".role_types 
  DROP COLUMN id RESTRICT;


