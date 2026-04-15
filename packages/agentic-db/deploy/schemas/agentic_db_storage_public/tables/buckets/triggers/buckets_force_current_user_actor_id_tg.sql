-- Deploy: schemas/agentic_db_storage_public/tables/buckets/triggers/buckets_force_current_user_actor_id_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_private/trigger_fns/buckets_force_current_user_actor_id


CREATE TRIGGER buckets_force_current_user_actor_id_tg
BEFORE INSERT ON agentic_db_storage_public.buckets
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.buckets_force_current_user_actor_id ( );

