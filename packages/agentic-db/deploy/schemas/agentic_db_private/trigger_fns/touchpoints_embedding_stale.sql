-- Deploy: schemas/agentic_db_private/trigger_fns/touchpoints_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE FUNCTION agentic_db_private.touchpoints_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  new.embedding_stale := true;
  new.embedding := NULL;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

