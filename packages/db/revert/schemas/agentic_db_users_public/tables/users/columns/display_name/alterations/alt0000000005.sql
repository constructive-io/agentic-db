-- Revert: schemas/agentic_db_users_public/tables/users/columns/display_name/alterations/alt0000000005


ALTER TABLE "agentic_db_users_public".users 
  DROP CONSTRAINT users_display_name_chk;


