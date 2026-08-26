BEGIN;
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
      FROM pg_indexes
     WHERE schemaname = 'public'
       AND indexname = 'artifact_migration_flow_test_label_idx'
  ) THEN
    RAISE EXCEPTION 'artifact_migration_flow_test_label_idx is missing';
  END IF;
END
$$;
ROLLBACK;
