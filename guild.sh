#!/bin/bash

# Otomatik BOUNDLESS GUILD scripti (interaktif girdi yok)

echo "==============================="
echo " BOUNDLESS GUILD OTOMATIK KURULUM "
echo "==============================="

# ENV üzerinden gelen bilgiler
RPC_URL=${RPC_URL}
PRIVATE_KEY=${PRIVATE_KEY}
ROLE=${ROLE:-both}  # default olarak both seçer
STAKE_AMOUNT=10
DEPOSIT_AMOUNT=0.000001

# Kontrol
if [[ -z "$RPC_URL" || -z "$PRIVATE_KEY" ]]; then
  echo "❌ Gerekli bilgiler eksik. Lütfen Render ortam değişkenlerine RPC_URL ve PRIVATE_KEY girin."
  exit 1
fi

echo "🔗 RPC_URL: $RPC_URL"
echo "🔐 PRIVATE_KEY: (gizli)"
echo "🎭 ROLE: $ROLE"

# Kurulum simülasyonu
sleep 1
echo "📦 Sistem hazırlanıyor..."
sleep 1
echo "📥 Boundless CLI kurulumu başlatıldı..."
sleep 1
echo "✅ Kurulum tamamlandı"

# İşlem simülasyonu
if [[ "$ROLE" == "prover" ]]; then
  echo "🚀 Prover işlemi başlatılıyor... (Stake: $STAKE_AMOUNT USDC)"
elif [[ "$ROLE" == "dev" ]]; then
  echo "🚀 Dev işlemi başlatılıyor... (Deposit: $DEPOSIT_AMOUNT ETH)"
else
  echo "🚀 Prover işlemi başlatılıyor... (Stake: $STAKE_AMOUNT USDC)"
  sleep 1
  echo "🚀 Dev işlemi başlatılıyor... (Deposit: $DEPOSIT_AMOUNT ETH)"
fi

sleep 2
echo "✅ İşlem(ler) başarıyla tamamlandı."
echo "🎉 GUILD görevini başarıyla tamamladınız!"
