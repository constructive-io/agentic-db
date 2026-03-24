-- Revert: schemas/agentic_db_app_public/tables/emails/triggers/emails_embedding_stale_insert_tg


DROP TRIGGER emails_embedding_stale_insert_tg ON "agentic_db_app_public".emails;


