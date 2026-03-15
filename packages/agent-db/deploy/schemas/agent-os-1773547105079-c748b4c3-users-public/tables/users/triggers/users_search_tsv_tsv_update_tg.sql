-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/triggers/users_search_tsv_tsv_update_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-private/trigger_fns/users_search_tsv_tsv


CREATE TRIGGER users_search_tsv_tsv_update_tg
BEFORE UPDATE ON "agent-os-1773547105079-c748b4c3-users-public".users
FOR EACH ROW
WHEN (OLD.username IS DISTINCT FROM NEW.username OR OLD.display_name IS DISTINCT FROM NEW.display_name)
EXECUTE PROCEDURE "agent-os-1773547105079-c748b4c3-private".users_search_tsv_tsv ( );

