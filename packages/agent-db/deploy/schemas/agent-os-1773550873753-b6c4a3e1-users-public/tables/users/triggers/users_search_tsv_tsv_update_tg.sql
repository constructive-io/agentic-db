-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/triggers/users_search_tsv_tsv_update_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-private/trigger_fns/users_search_tsv_tsv


CREATE TRIGGER users_search_tsv_tsv_update_tg
BEFORE UPDATE ON "agent-os-1773550873753-b6c4a3e1-users-public".users
FOR EACH ROW
WHEN (OLD.username IS DISTINCT FROM NEW.username OR OLD.display_name IS DISTINCT FROM NEW.display_name)
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-private".users_search_tsv_tsv ( );

