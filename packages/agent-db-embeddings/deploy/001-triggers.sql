-- Deploy agent-db-embeddings:001-triggers to pg

BEGIN;

CREATE OR REPLACE FUNCTION agent_db_app_public.enqueue_embedding_job()
RETURNS trigger AS $$
BEGIN
  -- We only enqueue if the relevant fields changed or on insert.
  -- Graphile worker uses the graphile_worker.add_job function.
  PERFORM graphile_worker.add_job(
    'embed_record',
    json_build_object(
      'schema', TG_TABLE_SCHEMA,
      'table', TG_TABLE_NAME,
      'id', NEW.id
    )
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

-- Contacts trigger
CREATE TRIGGER tg_enqueue_embedding_contacts
AFTER INSERT OR UPDATE OF first_name, last_name, headline, bio, location, tags
ON agent_db_app_public.contacts
FOR EACH ROW EXECUTE PROCEDURE agent_db_app_public.enqueue_embedding_job();

-- Companies trigger
CREATE TRIGGER tg_enqueue_embedding_companies
AFTER INSERT OR UPDATE OF name, industry, description, tags
ON agent_db_app_public.companies
FOR EACH ROW EXECUTE PROCEDURE agent_db_app_public.enqueue_embedding_job();

-- Events trigger
CREATE TRIGGER tg_enqueue_embedding_events
AFTER INSERT OR UPDATE OF name, event_type, location, city, notes, tags
ON agent_db_app_public.events
FOR EACH ROW EXECUTE PROCEDURE agent_db_app_public.enqueue_embedding_job();

-- Notes trigger
CREATE TRIGGER tg_enqueue_embedding_notes
AFTER INSERT OR UPDATE OF content, tags
ON agent_db_app_public.notes
FOR EACH ROW EXECUTE PROCEDURE agent_db_app_public.enqueue_embedding_job();

COMMIT;
