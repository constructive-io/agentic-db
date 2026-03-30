-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_links/constraints/autonomy_record_links_target_record_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".autonomy_record_links 
  DROP CONSTRAINT autonomy_record_links_target_record_id_fkey;


